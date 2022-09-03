{
  description = ''Access glibc DNS resolution routines'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-resolv-master.flake = false;
  inputs.src-resolv-master.ref   = "refs/heads/master";
  inputs.src-resolv-master.owner = "mildred";
  inputs.src-resolv-master.repo  = "resolv.nim";
  inputs.src-resolv-master.type  = "github";
  
  inputs."dnsprotocol".owner = "nim-nix-pkgs";
  inputs."dnsprotocol".ref   = "master";
  inputs."dnsprotocol".repo  = "dnsprotocol";
  inputs."dnsprotocol".dir   = "source";
  inputs."dnsprotocol".type  = "github";
  inputs."dnsprotocol".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsprotocol".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-resolv-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-resolv-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}