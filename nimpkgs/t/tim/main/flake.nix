{
  description = ''Really lightweight template engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tim-main.flake = false;
  inputs.src-tim-main.owner = "openpeep";
  inputs.src-tim-main.ref   = "refs/heads/main";
  inputs.src-tim-main.repo  = "tim";
  inputs.src-tim-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tim-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tim-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}