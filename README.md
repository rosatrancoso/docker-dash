Running Dash App from a docker.

```
if __name__ == "__main__":
    #app.run_server(debug=True)
    # from docker needs to have this host and port explicitly
    app.run_server(host='0.0.0.0', debug=True, port=8050)
```

Example apps:
- https://dash.plotly.com/
- https://github.com/austinlasseter/flying-dog-beers/blob/master/app.py