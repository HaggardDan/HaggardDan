from i3pystatus import IntervalModule
from i3pystatus.core.command import run_through_shell


class NetmanagerVPN(IntervalModule):

    color_up = "#00ff00"
    color_down = "#FF0000"
    status_up = '▲'
    status_down = '▼'
    format = "{vpn_name} {status}"

    use_new_service_name = False
    status_command = "bash -c 'nmcli con show \"%(vpn_name)s\" | grep \"VPN connected\"'"
    vpn_up_command = "nmcli con down \"%(vpn_name)s\""
    vpn_down_command = "nmcli con up \"%(vpn_name)s\""


    connected = False
    label = ''
    vpn_name = ''

    settings = (
        ("format", "Format string"),
        ("color_up", "VPN is up"),
        ("color_down", "VPN is down"),
        ("status_down", "Symbol to display when down"),
        ("status_up", "Symbol to display when up"),
        ("vpn_name", "Name of VPN"),
        ("use_new_service_name", "Use new openvpn service names (openvpn 2.4^)"),
        ("vpn_up_command", "Command to bring up the VPN - default requires editing /etc/sudoers"),
        ("vpn_down_command", "Command to bring up the VPN - default requires editing /etc/sudoers"),
        ("status_command", "command to find out if the VPN is active"),
    )

    def init(self):
        if not self.vpn_name:
            raise Exception("vpn_name is required")

        if self.use_new_service_name:
            self.status_command = "bash -c 'nmcli con show \"%(vpn_name)s\" | grep \"VPN connected\"'"
            self.vpn_up_command = "nmcli con down \"%(vpn_name)s\""
            self.vpn_down_command = "nmcli con down \"%(vpn_name)s\""

    def toggle_connection(self):
        if self.connected:
            command = self.vpn_down_command
        else:
            command = self.vpn_up_command
        run_through_shell(command % {'vpn_name': self.vpn_name}, enable_shell=True)

    def on_click(self, button, **kwargs):
        self.toggle_connection()

    def run(self):
        command_result = run_through_shell(self.status_command % {'vpn_name': self.vpn_name}, enable_shell=True)
        self.connected = True if command_result.out.strip() else False

        if self.connected:
            color, status = self.color_up, self.status_up
        else:
            color, status = self.color_down, self.status_down

        vpn_name = self.vpn_name
        label = self.label

        self.data = locals()
        self.output = {
            "full_text": self.format.format(**locals()),
            'color': color,
        }