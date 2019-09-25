# Init AdMob 
# @param bool isReal Mostrar anúncio real ou anúncio de teste 
# @param int instance_id O ID da instância de Godot (get_instance_ID ())
init (isReal, instance_id)

# Init AdMob com parâmetros adicionais de classificação de conteúdo (somente Android) 
# @param bool isReal Mostrar anúncio real ou anúncio de teste 
# @param int instance_id O ID da instância de Godot (get_instance_ID ()) 
# @param boolean isForChildDirectedTreatment Se isForChildDirectedTreatment for true, maxAdContetRating será será ignorado (seu maxAdContentRating não pode ser outro que "G") 
# @param String maxAdContentRating O valor deve ser "G", "PG", "T" ou "MA". Se a classificação do seu aplicativo no Play Console e a sua configuração de maxAdContentRating no AdMob não corresponderem, seu aplicativo poderá ser banido pelo Google.
initWithContentRating (isReal, instance_id, isForChildDirectedTreatment, maxAdContentRating)


# Métodos de banner 
# --------------

# Carregar anúncios em banner (e exibir imediatamente) 
# @param ID da string O ID da unidade do banner 
# @param boolean isTop Mostra o banner na parte superior ou inferior do 
loadBanner ( id , isTop)

# Mostre o banner
showBanner ()

# Esconder o banner
hideBanner ()

# Redimensione o banner (quando a orientação mudar, por exemplo)
redimensionar ()

# Obter a largura do banner 
# @return int Largura do banner
getBannerWidth ()

# Obter a altura do banner 
# @return int Altura do banner
getBannerHeight ()

# Retorno de chamada no anúncio carregado (banner)
_on_admob_ad_loaded ()

# Erro de retorno de chamada na rede de publicidade (banner)
_on_admob_network_error ()

# Falha ao carregar o retorno de chamada do banner no anúncio (exceto erro de rede)
_on_admob_banner_failed_to_load ()

# Intersticiais Métodos 
# --------------------

# Carregar anúncios intersticiais 
# @param ID da string O ID da unidade intersticial 
loadInterstitial ( id )

# Mostrar o anúncio intersticial
showInterstitial ()

# Retorno de chamada para falha de anúncio intersticial ao carregar
_on_interstitial_not_loaded ()

# Retorno de chamada para intersticial carregado
_on_interstitial_loaded

# Retorno de chamada para ação de fechamento de anúncio intersticial
_on_interstitial_close ()

# Métodos de vídeos recompensados 
# -----------------------

# Carregar anúncios em vídeos premiados 
# @param ID da string O ID da unidade de vídeo recompensado 
loadRewardedVideo ( id )

# Mostrar o anúncio em vídeo recompensado
showRewardedVideo ()

# Retorno de chamada do aplicativo de vídeo em recompensa deixado
_on_rewarded_video_ad_left_application ()

# Retorno de chamada para anúncio em vídeo recompensado fechado
_on_rewarded_video_ad_closed ()

# Callback para anúncio em vídeo recompensado falhou ao carregar 
# @ param int errorCode o código de erro
_on_rewarded_video_ad_failed_to_load (errorCode)

# Retorno de chamada para anúncio em vídeo recompensado carregado
_on_rewarded_video_ad_loaded ()

# Retorno de chamada para anúncio em vídeo recompensado aberto
_on_rewarded_video_ad_opened ()

# Retorno de chamada para usuário de recompensa de anúncio em vídeo recompensado 
# @param Moeda da string A descrição do item de recompensa, por exemplo: coin 
# @param valor int
_on_rewarded (moeda, valor)

# O retorno de 
chamada para o anúncio em vídeo recompensado começou a reproduzir _on_rewarded_video_started ()