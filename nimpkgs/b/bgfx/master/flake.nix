{
  description = ''Wrapper for the graphics library; BGFX.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bgfx-master.flake = false;
  inputs.src-bgfx-master.owner = "Halsys";
  inputs.src-bgfx-master.ref   = "master";
  inputs.src-bgfx-master.repo  = "nim-bgfx";
  inputs.src-bgfx-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bgfx-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bgfx-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}