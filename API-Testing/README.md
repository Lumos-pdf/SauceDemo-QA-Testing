API Testing — reqres.in (Postman)
Manual API testing project covering CRUD operations against the reqres.in public test API, performed as part of a self-directed QA portfolio. This exercise demonstrates API-layer testing skills (request/response validation, status code verification, negative testing, and automated assertions) alongside the UI-level manual testing work in this repository.

Why This API
reqres.in is a free, publicly available mock REST API built specifically for testing and prototyping. It was chosen because it supports the full range of CRUD operations (GET, POST, PUT, DELETE) without requiring authentication, making it well suited for practicing request design, response validation, and assertion scripting.

Tools Used
Tool	Purpose
Postman	Building, running, and scripting API requests
Postman Collection Runner	Executing the full test suite in one pass
Google Sheets	Documenting test cases and expected/actual results
Scope — Endpoints Tested
Method	Endpoint	Purpose
GET	/api/users?page=2	List users (paginated)
GET	/api/users/2	Retrieve a single user
POST	/api/users	Create a new user
PUT	/api/users/2	Update an existing user
DELETE	/api/users/2	Delete a user
Test Coverage Summary
Metric	Result
Endpoints tested	7
Total test cases	15
Positive test cases	6
Negative test cases	9
Passed	8
Failed	7
Automated assertions added	20+ (across all requests)
Full test case details, including test data and expected/actual results, are in [API Test Cases – Reqres CRUD API.xlsx](./API Test Cases – Reqres CRUD API.xlsx).

Key Findings
Mock persistence behavior: POST /api/users returns a 201 Created response with a generated id, but a subsequent GET on that same id returns 404 Not Found. This confirms reqres.in does not persist created records — an important distinction to verify rather than assume when working with a mock/test API, since it directly affects how "success" should be interpreted in an automated suite.
Inconsistent error response format: GET /api/unknown/23 (a nonexistent endpoint) returns 404 with an empty JSON object {}, while GET /api/users/23 (a nonexistent user ID under a valid endpoint) also returns 404 with {}. Both are technically correct, but neither returns a descriptive error message or error code — a usability gap for any real client consuming this API.
Automated Assertions
Each request in the collection includes Postman test scripts validating:

Correct HTTP status code for the scenario (200, 201, 204, 404)
Response time under 1000ms
Presence and type of expected fields in the response body (e.g. id, email, first_name)
Correct behavior on negative/edge cases (e.g. 404 on invalid resource IDs)
How to Run This Collection
Open Postman and select Import.
Import reqres_API_Tests.postman_collection.json.
Select the collection and click Run to open the Collection Runner.
Click Run reqres_API_Tests.postman_collection — all requests will execute in sequence with pass/fail results shown for each assertion.
Folder Contents
/API-Testing
├── README.md                                   ← this file
├── reqres_API_Tests.postman_collection.json    ← exported Postman collection with assertions
├── API Test Cases – Reqres CRUD API.xlsx       ← full test case documentation (positive + negative)
└── screenshots/
    ├── collection-structure.png
    └── runner-results.png
Screenshots
Collection structure in Postman Postman collection structure

Collection Runner results Collection Runner results
