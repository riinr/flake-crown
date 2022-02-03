{
  description = ''Tiny pure Nim library to read PCAP files used by TcpDump/WinDump/Wireshark.'';
  inputs.src-pcap-master.flake = false;
  inputs.src-pcap-master.type = "github";
  inputs.src-pcap-master.owner = "PMunch";
  inputs.src-pcap-master.repo = "nim-pcap";
  inputs.src-pcap-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pcap-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pcap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pcap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}