function OnPlayerSpawn()
    ExtHtml = CreateWebUI(0, 0, 0, 0, 1, 60)
    LoadWebFile(ExtHtml,'http://asset/svg/svgExtHtml.html')
    SetWebAlignment(ExtHtml, 0.0, 0.0)
    SetWebAnchors(ExtHtml, 0.0, 0.0, 1.0, 1.0)
    SetWebVisibility(ExtHtml, WEB_HIDDEN)

    InHtml = CreateWebUI(0, 0, 0, 0, 1, 60)
    LoadWebFile(InHtml,'http://asset/svg/svgInHtml.html')
    SetWebAlignment(InHtml, 0.0, 0.0)
    SetWebAnchors(InHtml, 0.0, 0.0, 1.0, 1.0)
    SetWebVisibility(InHtml, WEB_HIDDEN)
end
AddEvent("OnPlayerSpawn", OnPlayerSpawn)


AddEvent("OnKeyPress", function(key)
    if key == "I" then
        if GetWebVisibility(InHtml) == WEB_HIDDEN then
            SetWebVisibility(InHtml, WEB_VISIBLE)
        else
            SetWebVisibility(InHtml, WEB_HIDDEN)
        end
    end

    if key == "E" then
        if GetWebVisibility(ExtHtml) == WEB_HIDDEN then
            SetWebVisibility(ExtHtml, WEB_VISIBLE)
        else
            SetWebVisibility(ExtHtml, WEB_HIDDEN)
        end
    end
end)