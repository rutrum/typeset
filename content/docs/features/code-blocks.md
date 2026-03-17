+++
title = "Code Blocks"
template = "docs_page.html"
description = "Displaying code with beautiful syntax highlighting"
weight = 6

[extra]
docs_root = "docs/_index.md"
+++

Technical writing often requires displaying code. This theme provides syntax highlighting for dozens of programming languages, making your code examples clear and readable.

## Inline Code

For short code references within text, use backticks: `const x = 42`. You can mention function names like `parseInt()`, variables like `userName`, or commands like `git commit`.

## Wide Code Blocks

For code with long lines, you can make a code block extend into the margins by adding `name=wide` to the fence:

```rust,name=wide
fn this_is_a_wide_code_block_that_extends_into_the_margins_for_better_readability_of_long_lines() {
    println!("This code block uses the wide option to extend beyond the normal content width.");
}
```

## Basic Code Blocks

Wrap code in triple backticks for a code block:

```
This is a plain code block
with no syntax highlighting.
It preserves whitespace and formatting.
```

## Syntax Highlighting

Specify a language after the opening backticks to enable highlighting:

### Python

```python
def fibonacci(n: int) -> list[int]:
    """Generate the first n Fibonacci numbers."""
    if n <= 0:
        return []

    sequence = [0, 1]
    while len(sequence) < n:
        sequence.append(sequence[-1] + sequence[-2])

    return sequence[:n]

# Usage
numbers = fibonacci(10)
print(f"First 10 Fibonacci numbers: {numbers}")
```

### Rust

```rust
use std::collections::HashMap;

fn word_frequency(text: &str) -> HashMap<String, usize> {
    let mut counts = HashMap::new();

    for word in text.split_whitespace() {
        let word = word.to_lowercase();
        *counts.entry(word).or_insert(0) += 1;
    }

    counts
}

fn main() {
    let text = "the quick brown fox jumps over the lazy dog";
    let freq = word_frequency(text);

    for (word, count) in &freq {
        println!("{}: {}", word, count);
    }
}
```

### JavaScript / TypeScript

```typescript
interface User {
  id: number;
  name: string;
  email: string;
  createdAt: Date;
}

async function fetchUsers(): Promise<User[]> {
  const response = await fetch('/api/users');

  if (!response.ok) {
    throw new Error(`HTTP error: ${response.status}`);
  }

  return response.json();
}

// Arrow function with destructuring
const formatUser = ({ name, email }: User): string =>
  `${name} <${email}>`;
```

### Go

```go
package main

import (
    "fmt"
    "sync"
)

func worker(id int, jobs <-chan int, results chan<- int, wg *sync.WaitGroup) {
    defer wg.Done()
    for job := range jobs {
        fmt.Printf("Worker %d processing job %d\n", id, job)
        results <- job * 2
    }
}

func main() {
    jobs := make(chan int, 100)
    results := make(chan int, 100)

    var wg sync.WaitGroup

    // Start 3 workers
    for w := 1; w <= 3; w++ {
        wg.Add(1)
        go worker(w, jobs, results, &wg)
    }

    // Send jobs
    for j := 1; j <= 9; j++ {
        jobs <- j
    }
    close(jobs)

    wg.Wait()
    close(results)
}
```

### HTML

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Example Page</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <nav class="main-nav">
            <a href="/" class="logo">Site Name</a>
            <ul class="nav-links">
                <li><a href="/about">About</a></li>
                <li><a href="/blog">Blog</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <article>
            <h1>Welcome</h1>
            <p>This is an example HTML document.</p>
        </article>
    </main>
</body>
</html>
```

### CSS / SCSS

```scss
// Variables
$primary-color: #2563eb;
$font-stack: 'Inter', system-ui, sans-serif;

// Mixins
@mixin flex-center {
  display: flex;
  justify-content: center;
  align-items: center;
}

// Component
.card {
  padding: 1.5rem;
  border-radius: 8px;
  background: white;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);

  &__title {
    font-family: $font-stack;
    font-size: 1.25rem;
    color: $primary-color;
  }

  &:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  }
}
```

### SQL

```sql
-- Create a table for blog posts
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    slug VARCHAR(255) UNIQUE NOT NULL,
    content TEXT,
    published_at TIMESTAMP WITH TIME ZONE,
    author_id INTEGER REFERENCES users(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Query with joins and aggregation
SELECT
    u.name AS author,
    COUNT(p.id) AS post_count,
    MAX(p.published_at) AS latest_post
FROM users u
LEFT JOIN posts p ON u.id = p.author_id
WHERE p.published_at IS NOT NULL
GROUP BY u.id, u.name
HAVING COUNT(p.id) > 5
ORDER BY post_count DESC;
```

### Shell / Bash

```bash
#!/bin/bash

# Deploy script with error handling
set -euo pipefail

PROJECT_DIR="/var/www/myapp"
BACKUP_DIR="/var/backups/myapp"

echo "Starting deployment..."

# Create backup
timestamp=$(date +%Y%m%d_%H%M%S)
tar -czf "$BACKUP_DIR/backup_$timestamp.tar.gz" "$PROJECT_DIR"

# Pull latest changes
cd "$PROJECT_DIR"
git fetch origin main
git reset --hard origin/main

# Install dependencies and build
npm ci
npm run build

# Restart service
sudo systemctl restart myapp

echo "Deployment complete!"
```

### JSON

```json
{
  "name": "my-project",
  "version": "1.0.0",
  "description": "An example project configuration",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "test": "vitest"
  },
  "dependencies": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0"
  },
  "devDependencies": {
    "typescript": "^5.0.0",
    "vite": "^5.0.0"
  }
}
```

### TOML

```toml
# Zola configuration
base_url = "https://example.com"
title = "My Blog"
description = "A blog about things"

[markdown.highlighting]
theme = "github-light"

[extra]
author = "Jane Doe"
nav_links = [
    { name = "Blog", url = "/blog" },
    { name = "About", url = "/about" },
]
```

## Conclusion

Good syntax highlighting makes code more readable and helps readers understand your examples quickly. This theme supports all major languages—just specify the language name after the opening fence.
