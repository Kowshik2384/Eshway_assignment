# Authorization Header Preservation on HTTP to HTTPS Redirect

## Problem Brief

The HTTP client library incorrectly strips the `Authorization` header during all scheme-change redirects. While stripping credentials is appropriate for cross-origin or downgrade scenarios, the current behavior is overly aggressive for same-origin HTTP to HTTPS upgrades where security is enhanced.

## Expected Behavior

### Authorization Header Preservation

The `Authorization` header MUST be preserved when:
- The redirect is from `http` to `https` on the same host
- The host and effective port remain unchanged (port 80 for HTTP equals port 443 for HTTPS)

### Authorization Header Stripping

The `Authorization` header MUST be stripped when:
- The redirect crosses to a different domain
- The redirect downgrades from `https` to `http`
- The host changes between requests

## Edge Cases

1. **Default Port Equivalence**: A redirect from `http://example.com:80/` to `https://example.com:443/` represents the same logical host and must preserve the header.

2. **Explicit Non-Default Ports**: A redirect from `http://example.com:8080/` to `https://example.com:8443/` crosses port boundaries and must strip the header.

3. **Subdomain Changes**: A redirect from `http://api.example.com/` to `https://www.example.com/` is cross-domain and must strip the header.

## Error Conditions

- If the redirect location is malformed, the client should raise an appropriate URL parsing error.
- If the redirect loop is detected, the client should raise a redirect loop error.
