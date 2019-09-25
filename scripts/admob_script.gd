extends Node2D

var admob = null
var isReal = false # em producao = true
var isTop = false
var adBannerId = "ca-app-pub-3940256099942544/6300978111" # [Replace with your Ad Unit ID and delete this message.]
var adInterstitialId = "ca-app-pub-3940256099942544/1033173712" # [Replace with your Ad Unit ID and delete this message.]
var adRewardedId = "ca-app-pub-3940256099942544/5224354917" # [There is no testing option for rewarded videos, so you can use this id for testing]

var isShowBanner = false

func _ready():
	if(Engine.has_singleton("AdMob")):
		admob = Engine.get_singleton("AdMob")
		admob.init(isReal, get_instance_id())
		loadBanner()
		loadInterstitial()
		loadRewardedVideo()
		admob.hideBanner()
	
	get_tree().connect("screen_resized", self, "onResize")

# Loaders

func loadBanner():
	if admob != null:
		admob.loadBanner(adBannerId, isTop)

func loadInterstitial():
	if admob != null:
		admob.loadInterstitial(adInterstitialId)
		
func loadRewardedVideo():
	if admob != null:
		admob.loadRewardedVideo(adRewardedId)

# Events

#if admob != null:
#admob.showBanner()
#admob.hideBanner()
#admob.showInterstitial()
#admob.showRewardedVideo()

# Carregar
#loadRewardedVideo()
#loadBanner()
#loadInterstitial()

# Load
#admob.loadBanner(adBannerId, isTop)
#admob.loadInterstitial(adInterstitialId)
#admob.loadRewardedVideo(adRewardedId)

# opened
# func _on_rewarded_video_ad_opened()

#On loaded

func _on_admob_ad_loaded():
	$onBanner.text = "Banner ON"
	#admob.showBanner()
	$baner.disabled = false
	pass
func _on_interstitial_loaded():
	$onIntersistial.text = "Intersistial ON"
	#admob.showInterstitial ()
	$interstital.disabled = false
	pass
func _on_rewarded_video_ad_loaded():
	$onVideo.text = "Video ON"
	$video.disabled = false
	pass

#On closse

func _on_interstitial_close():
	$onIntersistial.text = "Intersistial OFF"
	loadInterstitial()
	pass
func _on_rewarded_video_ad_closed():
	$onVideo.text = "Video OFF"
	loadRewardedVideo()
	pass


# Resize
func onResize():
	if admob != null:
		admob.resize()


func _on_video_pressed():
	admob.showRewardedVideo()
	$video.disabled = true
	pass

func _on_baner_pressed():
	if !isShowBanner:
		isShowBanner = true
		admob.showBanner()
	else:
		isShowBanner = false
		admob.hideBanner()
	pass

func _on_interstital_pressed():
	admob.showInterstitial()
	$interstital.disabled = true
	pass

func _on_buttonPopUp_pressed():
	$buttonPopUp/lblMake.visible = !$buttonPopUp/lblMake.visible
	pass
