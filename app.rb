require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/bookmark'
require './database_connection_setup'

class Bookmarks < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    enable :sessions, :method_override

    get '/' do
        erb(:home)
    end

    get '/bookmarks' do
        @bookmarks = Bookmark.all_bookmarks
        erb :'bookmarks/index'
    end

    get '/bookmarks/new' do
        erb(:'bookmarks/new')
    end

    post '/bookmarks' do
        Bookmark.add_bookmark(url: params[:url], title: params[:title])
        redirect '/bookmarks'
    end

    delete '/bookmarks/:id' do
        Bookmark.delete(id: params[:id])
        redirect '/bookmarks'
    end

    get '/bookmarks/:id/edit' do
        @id = params[:id]
        erb :"bookmarks/edit"
    end

    patch '/bookmarks/:id' do
        # if ENV['ENVIRONMENT'] == 'test'
        #     connection = PG.connect(dbname: 'bookmark_manager_test')
        # else
        #     connection = PG.connect(dbname: 'bookmark_manager')
        # end
        Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
        redirect '/bookmarks'
    end

    run! if app_file == $0
    
end