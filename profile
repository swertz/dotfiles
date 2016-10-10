if [ -d $HOME/.local ]; then
    export PATH="$HOME/.local/bin:$PATH"
    export LD_LIBRARY_PATH="$HOME/.local/lib:$HOME/.local/lib64:$LD_LIBRARY_PATH"
    export C_INCLUDE_PATH="$HOME/.local/include:$C_INCLUDE_PATH"
    export CPLUS_INCLUDE_PATH="$HOME/.local/include:$CPLUS_INCLUDE_PATH"
    
    export LDFLAGS="-L$HOME/.local/lib -L$HOME/.local/lib64"
fi
