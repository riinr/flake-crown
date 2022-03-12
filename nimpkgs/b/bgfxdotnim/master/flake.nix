{
  description = ''bindings to bgfx c99 api'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bgfxdotnim-master.flake = false;
  inputs.src-bgfxdotnim-master.owner = "zacharycarter";
  inputs.src-bgfxdotnim-master.ref   = "refs/heads/master";
  inputs.src-bgfxdotnim-master.repo  = "bgfx.nim";
  inputs.src-bgfxdotnim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bgfxdotnim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bgfxdotnim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}