{
  description = ''Type-safe commandline parsing with minimal magic'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-therapist-master.flake = false;
  inputs.src-therapist-master.owner = "maxgrenderjones";
  inputs.src-therapist-master.ref   = "refs/heads/master";
  inputs.src-therapist-master.repo  = "therapist";
  inputs.src-therapist-master.type  = "bitbucket";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-therapist-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-therapist-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}