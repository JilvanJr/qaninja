module Helpers
    def get_token
        js_script = 'return window.localStorage.getItem("default_auth_token");' #script do console sempre em aspas simples
        page.execute_script(js_script)
    end
end
