module("luci.controller.kikiauth.authserver", package.seeall)
                                                                                                               
function index() 
    entry({"kikiauth", "ping"}, call("action_say_pong"), "Click here", 10).dependent=false
    entry({"kikiauth", "auth"}, call("action_auth_response_to_gw"), "", 20).dependent=false
    entry({"kikiauth", "portal"}, call("action_redirect_to_success_page"), "Success page", 30).dependent=false
    entry({"kikiauth", "login"}, template("kikiauth/login"), "Login page", 40).dependent=false
    entry({"kikiauth", "oauth", "googlecallback"}, template("kikiauth/googlecallback"), "", 50).dependent=false
    entry({"kikiauth", "oauth", "facebookcallback"}, template("kikiauth/facebookcallback"), "", 60).dependent=false
end                                                                                                            

function action_say_pong()
    luci.http.prepare_content("text/plain")
    luci.http.write("Pong")
end

function action_redirect_to_success_page()
    luci.http.redirect("http://mbm.vn")
end                                                                   

function action_auth_resonse_to_gw()

end
