{
  description = ''wave is a tiny WAV sound module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wave-develop.flake = false;
  inputs.src-wave-develop.ref   = "refs/heads/develop";
  inputs.src-wave-develop.owner = "jiro4989";
  inputs.src-wave-develop.repo  = "wave";
  inputs.src-wave-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wave-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wave-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}