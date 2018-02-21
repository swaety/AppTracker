//
//  Uri.swift
//  AppTracker
//
//  Created by jonathan on 16/02/2018.
//  Copyright © 2018 jonathan. All rights reserved.
//

import Foundation
import UIKit

class URI {
    
    let clashroyale = "clashroyale://"
    let appstore = "itms-apps://"
    let clashofclans = "clashofclans://"
    let hearthstone = "hearthstone://"
    let youtube = "youtube://"
    let waze = "waze://"
    let discord = "discord://"
    let sms = "sms://"
    let photos = "photos-redirect://"
    let calendar = "calshow://"
    let enpass = "enpass://"
    let plans = "maps://"
    let imovie = "imovie://"
    let twitter = "twitter://"
    let snapchat = "snapchat://"
    let fidme = "fidme://"
    let groupon = "groupon://"
    let leboncoin = "leboncoin://"
    let uber = "uber://"
    let paypal = "paypal://"
    let banxo = "banxo://"
    let twitch = "twitch://"
    let linkedin = "linkedin://"
    let facetune = "facetune2://"
    let prisma = "prisma://"
    let shazam = "shazam://"
    let speedtest = "speedtest://"
    let puzzledom = "puzzledom://"
    let music = "music://"
    let mail = "mailto://"
    
    func createAppArray() -> Array<String>{
        var myapps = [String]()
        myapps.append(clashroyale)
        myapps.append(appstore)
        myapps.append(clashofclans)
        myapps.append(hearthstone)
        myapps.append(youtube)
        myapps.append(waze)
        myapps.append(discord)
        myapps.append(sms)
        myapps.append(photos)
        myapps.append(calendar)
        myapps.append(enpass)
        myapps.append(plans)
        myapps.append(imovie)
        myapps.append(twitter)
        myapps.append(snapchat)
        myapps.append(fidme)
        myapps.append(groupon)
        myapps.append(leboncoin)
        myapps.append(uber)
        myapps.append(paypal)
        myapps.append(banxo)
        myapps.append(twitch)
        myapps.append(linkedin)
        myapps.append(facetune)
        myapps.append(prisma)
        myapps.append(shazam)
        myapps.append(speedtest)
        myapps.append(puzzledom)
        myapps.append(music)
        myapps.append(mail)
        return myapps
    }
    
    let clashroyaleName = "Clash Royale"
    let appstoreName = "App Store"
    let clashofclansName = "Clash Of Clans"
    let hearthstoneName = "Hearthstone"
    let youtubeName = "Youtube"
    let wazeName = "Waze"
    let discordName = "Discord"
    let smsName = "Messages"
    let photosName = "Photos"
    let calendarName = "Calendrier"
    let enpassName = "Enpass"
    let plansName = "Plans"
    let imovieName = "iMovie"
    let twitterName = "Twitter"
    let snapchatName = "Snapchat"
    let fidmeName = "FidMe"
    let grouponName = "Groupon"
    let leboncoinName = "Leboncoin"
    let uberName = "Uber"
    let paypalName = "Paypal"
    let banxoName = "Banxo"
    let twitchName = "Twitch"
    let linkedinName = "LinkedIn"
    let facetuneName = "FaceTune 2"
    let prismaName = "Prisma"
    let shazamName = "Shazam"
    let speedtestName = "Speedtest"
    let puzzledomName = "Puzzledom"
    let musicName = "Musique"
    let mailName = "Mail"
    
    func createAppNameArray() -> Array<String>{
        var myappsName = [String]()
        myappsName.append(clashroyaleName)
        myappsName.append(appstoreName)
        myappsName.append(clashofclansName)
        myappsName.append(hearthstoneName)
        myappsName.append(youtubeName)
        myappsName.append(wazeName)
        myappsName.append(discordName)
        myappsName.append(smsName)
        myappsName.append(photosName)
        myappsName.append(calendarName)
        myappsName.append(enpassName)
        myappsName.append(plansName)
        myappsName.append(imovieName)
        myappsName.append(twitterName)
        myappsName.append(snapchatName)
        myappsName.append(fidmeName)
        myappsName.append(grouponName)
        myappsName.append(leboncoinName)
        myappsName.append(uberName)
        myappsName.append(paypalName)
        myappsName.append(banxoName)
        myappsName.append(twitchName)
        myappsName.append(linkedinName)
        myappsName.append(facetuneName)
        myappsName.append(prismaName)
        myappsName.append(shazamName)
        myappsName.append(speedtestName)
        myappsName.append(puzzledomName)
        myappsName.append(musicName)
        myappsName.append(mailName)
        return myappsName
    }

    let clashroyaleImage = UIImage(named: "clashroyale.png")
    let appstoreImage = UIImage(named: "appstore.png")
    let clashofclansImage = UIImage(named: "clashofclans.png")
    let hearthstoneImage = UIImage(named: "hearthstone.png")
    let youtubeImage = UIImage(named: "youtube.png")
    let discordImage = UIImage(named: "discord.png")
    let wazeImage = UIImage(named: "waze.png")
    let smsImage = UIImage(named: "sms.png")
    let photosImage = UIImage(named: "photos.png")
    let calendarImage = UIImage(named: "calendar.png")
    let enpassImage = UIImage(named: "enpass.png")
    let plansImage = UIImage(named: "plans.png")
    let imovieImage = UIImage(named: "imovie.png")
    let twitterImage = UIImage(named: "twitter.png")
    let snapchatImage = UIImage(named: "snapchat.png")
    let fidmeImage = UIImage(named: "fidme.png")
    let grouponImage = UIImage(named: "groupon.png")
    let leboncoinImage = UIImage(named: "leboncoin.png")
    let uberImage = UIImage(named: "uber.png")
    let paypalImage = UIImage(named: "paypal.png")
    let banxoImage = UIImage(named: "banxo.png")
    let twitchImage = UIImage(named: "twitch.png")
    let linkedinImage = UIImage(named: "linkedin.png")
    let facetuneImage = UIImage(named: "facetune.png")
    let prismaImage = UIImage(named: "prisma.png")
    let shazamImage = UIImage(named: "shazam.png")
    let speedtestImage = UIImage(named: "speedtest.png")
    let puzzledomImage = UIImage(named: "puzzledom.png")
    let musicImage = UIImage(named: "music.png")
    let mailImage = UIImage(named: "mail.png")

    func createAppImageArray() -> Array<UIImage>{
        var myappsImage = [UIImage]()
        myappsImage.append(clashroyaleImage!)
        myappsImage.append(appstoreImage!)
        myappsImage.append(clashofclansImage!)
        myappsImage.append(hearthstoneImage!)
        myappsImage.append(youtubeImage!)
        myappsImage.append(wazeImage!)
        myappsImage.append(discordImage!)
        myappsImage.append(smsImage!)
        myappsImage.append(photosImage!)
        myappsImage.append(calendarImage!)
        myappsImage.append(enpassImage!)
        myappsImage.append(plansImage!)
        myappsImage.append(imovieImage!)
        myappsImage.append(twitterImage!)
        myappsImage.append(snapchatImage!)
        myappsImage.append(fidmeImage!)
        myappsImage.append(grouponImage!)
        myappsImage.append(leboncoinImage!)
        myappsImage.append(uberImage!)
        myappsImage.append(paypalImage!)
        myappsImage.append(banxoImage!)
        myappsImage.append(twitchImage!)
        myappsImage.append(linkedinImage!)
        myappsImage.append(facetuneImage!)
        myappsImage.append(prismaImage!)
        myappsImage.append(shazamImage!)
        myappsImage.append(speedtestImage!)
        myappsImage.append(puzzledomImage!)
        myappsImage.append(musicImage!)
        myappsImage.append(mailImage!)
        return myappsImage
    }
    
    func randomize() ->Array<Int>{
        var l = createAppArray().count
        let length = UInt32(l)
        var random = [Int]()
        var i = 0
        random.append(-1)
        random.append(-1)
        random.append(-1)
        random.append(-1)
        random.append(-1)
        random.append(-1)
        while(i<6){
            var k = arc4random_uniform(length)
            while(k==random[0] || k==random[1] || k==random[2] || k==random[3] || k==random[4] || k==random[5]){
                k = arc4random_uniform(length)
            }
            let ra = Int(k)
            random[i]=ra
            i = i+1
        }
        return random
    }
}
