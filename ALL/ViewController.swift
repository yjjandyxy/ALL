//
//  ViewController.swift
//  ALL
//
//  Created by 123 on 16/3/31.
//  Copyright © 2016年 123. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func toChat(sender: AnyObject) {
        
        //新建一个聊天会话View Controller对象
        let chat = RCConversationViewController()
        //设置会话的类型，如单聊、讨论组、群聊、聊天室、客服、公众服务会话等
        chat.conversationType = RCConversationType.ConversationType_PRIVATE
        //设置会话的目标会话ID。（单聊、客服、公众服务会话为对方的ID，讨论组、群聊、聊天室为会话的ID）
        chat.targetId = "何超"
        //设置聊天会话界面要显示的标题
        chat.title = "何超"
        //显示聊天会话界面
        self.navigationController?.pushViewController(chat, animated: true)
        
        
        
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        let chatList = YourTestChatListViewController()
//        self.navigationController?.pushViewController(chatList, animated: true)
        
        
        
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     func onSelectedTableRow(conversationModelType: RCConversationModelType, conversationModel model: RCConversationModel!, atIndexPath indexPath: NSIndexPath!) {
        //打开会话界面
        let chat = RCConversationViewController(conversationType: model.conversationType, targetId: model.targetId)
        chat.title = "想显示的会话标题"
        self.navigationController?.pushViewController(chat, animated: true)
    }
    


}

