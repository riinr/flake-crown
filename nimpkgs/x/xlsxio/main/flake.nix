{
  description = ''This is a xlsxio wrapper done Nim in mind.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xlsxio-main.flake = false;
  inputs.src-xlsxio-main.owner = "jiiihpeeh";
  inputs.src-xlsxio-main.ref   = "refs/heads/main";
  inputs.src-xlsxio-main.repo  = "xlsxio-nim";
  inputs.src-xlsxio-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xlsxio-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xlsxio-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}