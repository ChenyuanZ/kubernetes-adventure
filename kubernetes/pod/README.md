# Useful Commands

* Get pod IP: `kubectl describe pod <pod-name> | grep IP | sed -E 's/IP:[[:space:]]+//'`
