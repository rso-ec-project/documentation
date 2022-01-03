Kind = "ingress-gateway"
Name = "chargers-ingress-gateway"
Listeners = [ 
    {   
        Port = 8080
        Protocol = "tcp"
        Services = [     
            {   
                Name = "charging-stations-ms"
            }
        ]
    }
]