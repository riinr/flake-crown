{
  description = ''Max wrapper for omni.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-omnimax-develop.flake = false;
  inputs.src-omnimax-develop.owner = "vitreo12";
  inputs.src-omnimax-develop.ref   = "refs/heads/develop";
  inputs.src-omnimax-develop.repo  = "omnimax";
  inputs.src-omnimax-develop.type  = "github";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni".dir   = "nimpkgs/o/omni";
  inputs."omni".owner = "riinr";
  inputs."omni".ref   = "flake-pinning";
  inputs."omni".repo  = "flake-nimble";
  inputs."omni".type  = "github";
  inputs."omni".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-omnimax-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-omnimax-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}