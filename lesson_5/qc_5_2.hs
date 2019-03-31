getRequestURL host apiKey resource id = host ++ "/" ++ resource ++ "/" ++ id ++ "?token" ++ apiKey

genApiResourceRequestBuilder apiKey resouce = getRequestURL "http://example.com" apiKey resouce