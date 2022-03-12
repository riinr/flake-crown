{
  description = ''ABI Encoding for Ethereum contracts'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-contractabi-main.flake = false;
  inputs.src-contractabi-main.owner = "status-im";
  inputs.src-contractabi-main.ref   = "refs/heads/main";
  inputs.src-contractabi-main.repo  = "nim-contract-abi";
  inputs.src-contractabi-main.type  = "github";
  
  inputs."stint".dir   = "nimpkgs/s/stint";
  inputs."stint".owner = "riinr";
  inputs."stint".ref   = "flake-pinning";
  inputs."stint".repo  = "flake-nimble";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable".dir   = "nimpkgs/q/questionable";
  inputs."questionable".owner = "riinr";
  inputs."questionable".ref   = "flake-pinning";
  inputs."questionable".repo  = "flake-nimble";
  inputs."questionable".type  = "github";
  inputs."questionable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."upraises".dir   = "nimpkgs/u/upraises";
  inputs."upraises".owner = "riinr";
  inputs."upraises".ref   = "flake-pinning";
  inputs."upraises".repo  = "flake-nimble";
  inputs."upraises".type  = "github";
  inputs."upraises".inputs.nixpkgs.follows = "nixpkgs";
  inputs."upraises".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-contractabi-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-contractabi-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}