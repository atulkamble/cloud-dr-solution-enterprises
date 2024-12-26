aws route53 create-health-check \
    --caller-reference "my-health-check-$(date +%s)" \
    --health-check-config '{
        "IPAddress": "198.51.100.1",
        "Port": 80,
        "Type": "HTTP",
        "ResourcePath": "/",
        "RequestInterval": 30,
        "FailureThreshold": 3
    }'
