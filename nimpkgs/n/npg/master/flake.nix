{
  description = ''Password generator in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-npg-master.flake = false;
  inputs.src-npg-master.owner = "rustomax";
  inputs.src-npg-master.ref   = "refs/heads/master";
  inputs.src-npg-master.repo  = "npg";
  inputs.src-npg-master.type  = "github";
  
  inputs."passgen".dir   = "nimpkgs/p/passgen";
  inputs."passgen".owner = "riinr";
  inputs."passgen".ref   = "flake-pinning";
  inputs."passgen".repo  = "flake-nimble";
  inputs."passgen".type  = "github";
  inputs."passgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."passgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-npg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-npg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}