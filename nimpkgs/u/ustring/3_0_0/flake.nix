{
  description = ''utf-8 string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ustring-3_0_0.flake = false;
  inputs.src-ustring-3_0_0.owner = "rokups";
  inputs.src-ustring-3_0_0.ref   = "refs/tags/3.0.0";
  inputs.src-ustring-3_0_0.repo  = "nim-ustring";
  inputs.src-ustring-3_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ustring-3_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ustring-3_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}