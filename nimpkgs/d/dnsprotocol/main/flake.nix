{
  description = ''Domain Name System (DNS) protocol for Nim programming language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dnsprotocol-main.flake = false;
  inputs.src-dnsprotocol-main.owner = "rockcavera";
  inputs.src-dnsprotocol-main.ref   = "refs/heads/main";
  inputs.src-dnsprotocol-main.repo  = "nim-dnsprotocol";
  inputs.src-dnsprotocol-main.type  = "github";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dnsprotocol-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dnsprotocol-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}