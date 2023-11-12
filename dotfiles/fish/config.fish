if status is-interactive
    # Commands to run in interactive sessions can go here
    set KUBE_EDITOR nvim
    set EDITOR nvim
    

    # Import key bindings
    set fish_key_bindings fish_user_key_bindings
    # Set colorscheme from wall when fish starts
    cat ~/.cache/wal/sequences 
    
end
