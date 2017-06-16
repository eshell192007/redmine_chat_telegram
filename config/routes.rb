resources :telegram_group_chats, only: [:create, :destroy]
get 'issues/:id/telegram_messages' => 'telegram_messages#index', as: 'issue_telegram_messages'
post 'issues/:id/telegram_messages/publish' => 'telegram_messages#publish', as: 'publish_issue_telegram_messages'

scope :redmine_chat_telegram do
  scope :api do
    get 'web_hook' => 'telegram_api#web_hook', as: 'chat_telegram_api_webhook'
    post 'authorize' => 'telegram_api#authorize', as: 'chat_telegram_api_authorize'
    post 'auth_status' => 'telegram_api#auth_status', as: 'chat_telegram_api_auth_status'
    delete 'deauthorize' => 'telegram_api#deauthorize', as: 'chat_telegram_api_deauthorize'
  end
end
