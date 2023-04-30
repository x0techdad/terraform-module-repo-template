# Primitive, common input variable types
variable "string" {
  description = "A string."
  type        = string
  default     = "foo" # Set default value to null to make variable optional. 
}

variable "number" {
  description = "A number."
  default     = 1
}

variable "bool" {
  description = "A boolean. Use primarily to enable complex capabilites that are off by default"
  type        = bool
  default     = false
}

# Complex, collection input variables
variable "string_list" {
  description = "A list of strings."
  type        = list(string)
  default     = [
    "foo",
    "bar",
    1
  ]
}

variable "string_map" {
  description = "A map of strings."
  type        = map(string)
  default     = {
    foo       = "bar"
    bar       = "foo"
    num       = 1
  }
}

variable "string_map_list" {
  description = "A list of string maps."
  type        = list(map(string))
  default     = [
    {
      foo     = "bar"
      num     = 1
    },
    {
        bar   = "foo"
        num   = 2
    }
  ]
}

variable "object" {
  description = "An object."
  type        = object({
    foo       = string
    num       = number
    bool      = bool
    object    = object({
      foo     = string 
    })
    list      = list(any)
    map       = map(any)
  })
  default     = {
    foo       = "bar"
    num       = 1
    bool      = true
    object    = {
      foo     = "bar"
    }
    list      = [ "foo" ]
    map       = {
      foo     = "bar"
    }
  }
}

variable "object_list" {
  description = "A list of objects."
  type        = list(object({
    foo       = string
    num       = number
    bool      = bool
    object    = object({
      foo     = string 
    })
    list      = list(any)
    map       = map(any)
  }))
  default     = [{
    foo       = "bar"
    num       = 1
    bool      = true
    object    = {
      foo     = "bar"
    }
    list      = [ "foo" ]
    map       = {
      foo     = "bar"
    }
  }]
}

variable "object_map" {
  description = "A map of objects."
  type        = map(object({
    foo       = string
    num       = number
    bool      = bool
    object    = object({
      foo     = string 
    })
    list      = list(any)
    map       = map(any)
  }))
  default     = {
    foo       = {
      foo     = "foo"
      num     = 1
      bool    = true
      object  = {
        foo   = "foo"
      }
      list    = [ "foo" ]
      map     = {
        foo   = "foo"
        num   = 1
      }
    },
    bar       = {
      foo     = "bar"
      num     = 2
      bool    = false
      object    = {
        foo     = "bar"
      }
      list      = [ "bar" ]
      map       = {
        foo     = "bar"
        num     = 2
      }
    }
  }
}

variable "object_map_list" {
  description = "A list of object maps."
  type        = list(map(object({
    foo       = string
    num       = number
    bool      = bool
    object    = object({
      foo     = string 
    })
    list      = list(any)
    map       = map(any)
  })))
  default     = [{
    foo       = {
      foo     = "foo"
      num     = 1
      bool    = true
      object  = {
        foo   = "foo"
      }
      list    = [ "foo" ]
      map     = {
        foo   = "foo"
        num   = 1
      }
    }
  },
  {
    bar       = {
      foo     = "bar"
      num     = 2
      bool    = false
      object    = {
        foo     = "bar"
      }
      list      = [ "bar" ]
      map       = {
        foo     = "bar"
        num     = 2
      }
    }
  }]
}