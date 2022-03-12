{
  description = ''Linear algebra for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-linalg-raw-pointers.flake = false;
  inputs.src-linalg-raw-pointers.owner = "andreaferretti";
  inputs.src-linalg-raw-pointers.ref   = "refs/tags/raw-pointers";
  inputs.src-linalg-raw-pointers.repo  = "linear-algebra";
  inputs.src-linalg-raw-pointers.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-linalg-raw-pointers"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-linalg-raw-pointers";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}