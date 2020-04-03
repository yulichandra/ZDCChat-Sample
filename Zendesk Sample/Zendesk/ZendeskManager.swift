//
//  ZendeskManager.swift
//  OVO
//
//  Created by Yuli Chandra on 24/03/20.
//  Copyright © 2020 Lippo X. All rights reserved.
//

import ZDCChat

class ZendeskManager {
    
    class func initialize() {
//        #if DEBUG
        ZDCLog.enable(true)
        ZDCLog.setLogLevel(.debug)
//        #endif
        ZDCChat.initialize(withAccountKey: Environment.accountKey)
        guard let instance = ZDCChat.instance() else { return }
        instance.enableAgentAvailabilityObserving(true)
        instance.shouldResumeOnLaunch = false
        appearance()
    }
    
    /**
    * The visitors name to be submitted prior to the chat starting.
    * The visitors email to be submitted prior to the chat starting.
    * The visitors phone to be submitted prior to the chat starting.
    * Add a visitor note. This will append it to any existing notes in Zopim.
    * Specifies whether visitor data should be persisted for use when starting
    * future chat sessions. If switched off then persisted data will immediately be wiped.
    */
    class func showChat(in navCon: UINavigationController?, category: String, subCategory: String) {
        ZDCChat.start(in: navCon, withConfig: {config in
            config?.department = category
            config?.tags = [subCategory]
            config?.preChatDataRequirements.name = .required
            config?.preChatDataRequirements.phone = .required
            config?.preChatDataRequirements.email = .required
            config?.preChatDataRequirements.message = .optional
            config?.emailTranscriptAction = .prompt
        })
    }
    
    class func setPushToken(_ tokenData: Data) {
        ZDCChat.setPushToken(tokenData)
    }
    
    class func clearPushToken() {
        ZDCChat.clearPushToken()
    }
    
    class func didReceiveNotification(_ userInfo: [AnyHashable : Any]) {
        ZDCChat.didReceiveRemoteNotification(userInfo)
    }
    
    class func isZendeskChatNotification(userInfo: [AnyHashable: Any]) -> Bool {
        return ZDCChat.isZendeskChatNotification(userInfo)
    }
    
    class func endChat() {
        ZDCChat.end()
    }
}
