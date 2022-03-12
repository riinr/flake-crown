{
  description = ''A natural language library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tome-main.flake = false;
  inputs.src-tome-main.owner = "dizzyliam";
  inputs.src-tome-main.ref   = "refs/heads/main";
  inputs.src-tome-main.repo  = "tome";
  inputs.src-tome-main.type  = "github";
  
  inputs."zip".dir   = "nimpkgs/z/zip";
  inputs."zip".owner = "riinr";
  inputs."zip".ref   = "flake-pinning";
  inputs."zip".repo  = "flake-nimble";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."untar".dir   = "nimpkgs/u/untar";
  inputs."untar".owner = "riinr";
  inputs."untar".ref   = "flake-pinning";
  inputs."untar".repo  = "flake-nimble";
  inputs."untar".type  = "github";
  inputs."untar".inputs.nixpkgs.follows = "nixpkgs";
  inputs."untar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tome-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tome-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}