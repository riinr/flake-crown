{
  description = ''wave is a tiny WAV sound module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wave-master.flake = false;
  inputs.src-wave-master.ref   = "refs/heads/master";
  inputs.src-wave-master.owner = "jiro4989";
  inputs.src-wave-master.repo  = "wave";
  inputs.src-wave-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wave-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wave-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}