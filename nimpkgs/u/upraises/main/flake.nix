{
  description = ''exception tracking for older versions of nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-upraises-main.flake = false;
  inputs.src-upraises-main.ref   = "refs/heads/main";
  inputs.src-upraises-main.owner = "markspanbroek";
  inputs.src-upraises-main.repo  = "upraises";
  inputs.src-upraises-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-upraises-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-upraises-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}