//
//  ZendeskManager+Appearance.swift
//  OVO
//
//  Created by Yuli Chandra on 01/04/20.
//  Copyright © 2020 Lippo X. All rights reserved.
//

import ZDCChat

//MARK: Appearance
extension ZendeskManager {
    class func appearance() {
        chatOverlayAppearance()
        loadingAppearance()
        chatAppearance()
        ratingAppearance()
        entryTextAppearance()
        joinLeaveAppearance()
        offlineMessageAppearance()
        systemTriggerAppearance()
        loadingErrorAppearnce()
    }
}

private extension ZendeskManager {
    
    class func chatOverlayAppearance() {
        ZDCChat.instance()?.overlay.setEnabled(false)
        let appearance = ZDCChatOverlay.appearance()
        appearance.typingIndicatorColor = .purple
        appearance.typingIndicatorHighlightColor = .purple
        appearance.typingIndicatorDiameter = 8
    }
    
    class func loadingAppearance() {
        let appearance = ZDCLoadingView.appearance()
        appearance.loadingLabelTextColor = .lightGray
    }
    
    class func chatAppearance() {
        let agent = ZDCAgentChatCell.appearance()
        agent.bubbleColor = .purple
        agent.bubbleBorderColor = .clear
        agent.textColor = .white
        agent.bubbleCornerRadius = 20
        agent.textInsets = NSValue(uiEdgeInsets: UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12))
        agent.avatarHeight = 40
        agent.authorColor = .black
        
        let visitor = ZDCVisitorChatCell.appearance()
        visitor.bubbleColor = .lightGray
        visitor.bubbleBorderColor = .clear
        visitor.textColor = .black
        visitor.bubbleCornerRadius = 20
        visitor.textInsets = NSValue(uiEdgeInsets: UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12))
    }
    
    class func ratingAppearance() {
        let appearance = ZDCRatingCell.appearance()
        appearance.textColor = .white
        appearance.bubbleColor = .green
        appearance.bubbleBorderColor = .clear
        appearance.bubbleCornerRadius = 24
        appearance.titleColor = .black
        appearance.leaveCommentTitleColor = .black
        appearance.titleToButtonsMargin = 16
        appearance.cellToTitleMargin = 24
        appearance.ratingButtonSize = 48
    }
    
    class func entryTextAppearance() {
        let appearance = ZDCTextEntryView.appearance()
        appearance.textEntryColor = .black
        appearance.areaBackgroundColor = .white
        appearance.textEntryBackgroundColor = .white
        appearance.textEntryBorderColor = .white
        appearance.topBorderColor = .black
    }
    
    class func joinLeaveAppearance() {
        let appearance = ZDCJoinLeaveCell.appearance()
        appearance.textColor = .lightGray
    }
    
    class func offlineMessageAppearance() {
        let appearance = ZDCOfflineMessageView.appearance()
        appearance.formBackgroundColor = .white
    }
    
    class func systemTriggerAppearance() {
        let appearance = ZDCSystemTriggerCell.appearance()
        appearance.textColor = .black
    }
    
    class func loadingErrorAppearnce() {
        let appearance = ZDCLoadingErrorView.appearance()
        appearance.buttonBackgroundColor = .purple
        appearance.buttonTitleColor = .white
        appearance.titleColor = .black
        appearance.messageColor = .black
    }
}
