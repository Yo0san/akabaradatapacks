# 導入完了
  tellraw @a {"text":"【懐中電灯を得る】","hoverEvent":{"action":"show_text","contents":[{"text":"クリックで入手"}]},"clickEvent":{"action":"run_command","value":"/function mh_flash:give"}}
# スコア定義
  scoreboard objectives add mh.switch dummy
  scoreboard objectives add mh.right_click minecraft.used:carrot_on_a_stick