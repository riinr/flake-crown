{
  description = ''Tiny pure Nim library to read PCAP files used by TcpDump/WinDump/Wireshark.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pcap-master.flake = false;
  inputs.src-pcap-master.owner = "PMunch";
  inputs.src-pcap-master.ref   = "refs/heads/master";
  inputs.src-pcap-master.repo  = "nim-pcap";
  inputs.src-pcap-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pcap-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pcap-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}