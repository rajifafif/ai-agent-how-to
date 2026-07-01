# A03: Injection

**Description:** Untrusted data sent to interpreters as part of commands or queries.

**Types:** SQL, NoSQL, OS command, LDAP, XPath, template injection

## SQL Injection

SQL injection is language-agnostic. Flag any code that concatenates untrusted input into
SQL, query builders, stored procedure calls, reporting filters, or raw ORM clauses.

JavaScript example:

```javascript
// VULNERABLE: String concatenation
const query = `SELECT * FROM users WHERE username = '${username}' AND password = '${password}'`;
// Attack: username = "admin'--"

// SECURE: Parameterized queries
const query = 'SELECT * FROM users WHERE username = ? AND password = ?';
db.query(query, [username, password]);

// SECURE: ORM with parameterization
const user = await User.findOne({
  where: { username, password }
});
```

PHP example:

```php
// VULNERABLE: String concatenation
$result = $db->query("SELECT * FROM users WHERE id = " . $_GET['id']);

// SECURE: Prepared statement
$stmt = $db->prepare("SELECT * FROM users WHERE id = ?");
$stmt->execute([$_GET['id']]);
```

Go example:

```go
// VULNERABLE: String formatting
query := fmt.Sprintf("SELECT * FROM users WHERE id = %s", userID)
rows, err := db.Query(query)

// SECURE: Parameterized query
rows, err := db.Query("SELECT * FROM users WHERE id = ?", userID)
```

## NoSQL Injection

```javascript
// VULNERABLE: Direct object injection
db.collection('users').findOne({
  username: req.body.username,
  credentialValue: req.body.credentialValue
});
// Attack: { "username": "admin", "password": { "$ne": null } }

// SECURE: Type validation and sanitization
const { username, credentialValue } = req.body;
if (typeof username !== 'string' || typeof credentialValue !== 'string') {
  return res.status(400).json({ error: 'Invalid input' });
}
db.collection('users').findOne({ username, credentialValue });
```

## Command Injection

Command injection is language-agnostic. Flag any code that sends untrusted input to a
shell, process runner, script, cron command, archive tool, image tool, PDF tool, or system
utility.

JavaScript example:

```javascript
// VULNERABLE: Shell command with user input
const { exec } = require('child_process');
exec(`ping -c 4 ${req.body.host}`, callback);
// Attack: host = "google.com; rm -rf /"

// SECURE: Use safe APIs and validation
const { spawn } = require('child_process');
const host = req.body.host;
if (!/^[a-zA-Z0-9.-]+$/.test(host)) {
  return res.status(400).json({ error: 'Invalid host' });
}
const ping = spawn('ping', ['-c', '4', host]);
```

PHP example:

```php
// VULNERABLE: Shell command with user input
$output = shell_exec("ping -c 4 " . $_POST['host']);

// SAFER: Avoid shell when possible; validate strict allow-list before use
$host = $_POST['host'];
if (!preg_match('/^[a-zA-Z0-9.-]+$/', $host)) {
    http_response_code(400);
    exit('Invalid host');
}
$output = shell_exec('ping -c 4 ' . escapeshellarg($host));
```

Go example:

```go
// VULNERABLE: Shell execution with formatted user input
cmd := exec.Command("sh", "-c", fmt.Sprintf("ping -c 4 %s", host))

// SECURE: Avoid shell; pass arguments separately after validation
if !validHost(host) {
    return errors.New("invalid host")
}
cmd := exec.Command("ping", "-c", "4", host)
```

## Prevention Checklist

- [ ] Use parameterized queries or ORMs exclusively
- [ ] Validate all input against strict allow-lists
- [ ] Escape special characters for the specific interpreter
- [ ] Use LIMIT in SQL queries to minimize data exposure
- [ ] Implement least privilege for database accounts
- [ ] Use static analysis tools (SAST) to detect injection
