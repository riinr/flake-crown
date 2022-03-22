{
  description = ''Sound fonts for paramidi'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paramidi_soundfonts-master.flake = false;
  inputs.src-paramidi_soundfonts-master.ref   = "refs/heads/master";
  inputs.src-paramidi_soundfonts-master.owner = "paranim";
  inputs.src-paramidi_soundfonts-master.repo  = "paramidi_soundfonts";
  inputs.src-paramidi_soundfonts-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paramidi_soundfonts-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-paramidi_soundfonts-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}