{
  description = ''Simple DNS server for local development'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lodns-0_1_1.flake = false;
  inputs.src-lodns-0_1_1.ref   = "refs/tags/0.1.1";
  inputs.src-lodns-0_1_1.owner = "vandot";
  inputs.src-lodns-0_1_1.repo  = "lodns";
  inputs.src-lodns-0_1_1.type  = "github";
  
  inputs."dnsprotocol".owner = "nim-nix-pkgs";
  inputs."dnsprotocol".ref   = "master";
  inputs."dnsprotocol".repo  = "dnsprotocol";
  inputs."dnsprotocol".dir   = "main";
  inputs."dnsprotocol".type  = "github";
  inputs."dnsprotocol".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsprotocol".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lodns-0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-lodns-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}