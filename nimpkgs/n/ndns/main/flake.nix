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
  
  inputs."dnsprotocol".dir   = "nimpkgs/d/dnsprotocol";
  inputs."dnsprotocol".owner = "riinr";
  inputs."dnsprotocol".ref   = "flake-pinning";
  inputs."dnsprotocol".repo  = "flake-nimble";
  inputs."dnsprotocol".type  = "github";
  inputs."dnsprotocol".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsprotocol".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
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