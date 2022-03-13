{
  description = ''Tiny pure Nim library to read PCAP files used by TcpDump/WinDump/Wireshark.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pcap-master".dir   = "master";
  inputs."pcap-master".owner = "nim-nix-pkgs";
  inputs."pcap-master".ref   = "master";
  inputs."pcap-master".repo  = "pcap";
  inputs."pcap-master".type  = "github";
  inputs."pcap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pcap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}