local a=medialib.load("oop")local b=a.class("WebRadioService","BASSService")b.identifier="webradio"local c={"^https?://(.*)%.pls","^https?://(.*)%.m3u"}function b:parseUrl(d)for e,f in pairs(c)do local g=string.match(d,f)if g then return{id=g}end end end;function b:isValidUrl(d)return self:parseUrl(d)~=nil end;function b:resolveUrl(d,h)h(d,{})end;function b:directQuery(d,h)h(nil,{title=d:match("([^/]+)$")})end;return b