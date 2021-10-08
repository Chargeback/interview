# Sift Interview Sandbox

This repo is designed to test a variety of skills

1. Data Modeling
2. Api Design
3. Query Optimization
4. Refactoring
5. Testing

## Setup

Clone the codebase locally and run
```
  bundle install
  rake db:create
```

## Implementation

A local library needs us to design and implement a checkout system for a new branch. We have some models according to the
spec they provided.

  a. Media
  b. MediaCopy
  b. User
  c. Checkout

We need to:
1. Model the relationships between these models to develop a usable checkout api.
2. Represent those relationships in our application models.
3. Write queries to satisfy the endpoints defined by our application controllers. (They don't need to be restful)