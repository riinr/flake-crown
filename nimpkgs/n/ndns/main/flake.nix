{
  description = ''A pure Nim Domain Name System (DNS) client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ndns-main.flake = false;
  inputs.src-ndns-main.owner = "rockcavera";
  inputs.src-ndns-main.ref   = "refs/heads/main";
  inputs.src-ndns-main.repo  = "nim-ndns";
  inputs.src-ndns-main.type  = "github";
  
  inputs."dnsprotocol".owner = "nim-nix-pkgs";
  inputs."dnsprotocol".ref   = "master";
  inputs."dnsprotocol".repo  = "dnsprotocol";
  inputs."dnsprotocol".type  = "github";
  inputs."dnsprotocol".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsprotocol".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ndns-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ndns-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}