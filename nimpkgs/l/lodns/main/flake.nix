{
  description = ''Simple DNS server for local development'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lodns-main.flake = false;
  inputs.src-lodns-main.ref   = "refs/heads/main";
  inputs.src-lodns-main.owner = "vandot";
  inputs.src-lodns-main.repo  = "lodns";
  inputs.src-lodns-main.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lodns-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-lodns-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}