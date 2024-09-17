if status is-interactive
    # Commands to run in interactive sessions can go here
    if set -q ZELLIJ
    else
        zellij
    end

    set -gx PATH /home/linuxbrew/.linuxbrew/opt/openjdk@17/bin $PATH

    set -gx ANDROID_HOME /home/$(whoami)/android-sdk
    set -gx PATH $PATH $ANDROID_HOME/tools/cmdline-tools/bin $ANDROID_HOME/platform-tools
    # /cmdline-tools/bin/
end
