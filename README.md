# Sift Interview Sandbox

## Purpose
This repo is designed to test a few skills 

1. Data Modeling
2. Api Design
3. Query Optimization

## Setup

Clone the codebase locally and run
```
  bundle install
  rake db:create
```

## Implementation

A local library needs us to design and implement a checkout system for a new branch. We have some models according to the
spec they provided. The solution might require more models than this, the customer just provided a base spec for us to build from

  A. Media
  B. MediaCopy
  C. User
  D. Checkout

We need to:
1. Model the relationships between these models to develop a usable checkout api.
2. Represent those relationships in our application models.
3. Write queries to satisfy the endpoints defined by our application controllers. (They don't need to be restful)

Bonus:
1. Authentication
1. Setup Scripts
1. CRUD Operations for controllers