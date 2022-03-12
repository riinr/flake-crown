{
  description = ''Bindings for libsoundio'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-soundio-master.flake = false;
  inputs.src-soundio-master.owner = "ul";
  inputs.src-soundio-master.ref   = "refs/heads/master";
  inputs.src-soundio-master.repo  = "soundio";
  inputs.src-soundio-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-soundio-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-soundio-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}