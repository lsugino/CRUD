get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/notes' do
  @all_notes = Note.all
  erb :display_all
end

get '/notes/new' do
  erb :new_note
end

post '/notes' do
  p params
  Note.create(note: params[:note])
  redirect '/notes'
end

get '/note' do
  @note = Note.find(params[:id])
  erb :show_note
end

get '/note/:id' do
  @note = Note.find(params[:id])
  erb :edit_note
end

put '/note/:id' do
  @note = Note.find(params[:id])
  @note.update_attributes(note: params[:note])
  redirect "/note/#{@note.id}"
end

get '/note/:id/remove' do
  @note = Note.find(params[:id])
  erb :delete
end

delete '/note/:id' do
  note = Note.find(params[:id])
  note.destroy
  redirect '/notes'
end
