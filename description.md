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




