{
  description = ''Type-safe commandline parsing with minimal magic'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-therapist-v0_1_0.flake = false;
  inputs.src-therapist-v0_1_0.owner = "maxgrenderjones";
  inputs.src-therapist-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-therapist-v0_1_0.repo  = "therapist";
  inputs.src-therapist-v0_1_0.type  = "bitbucket";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-therapist-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-therapist-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}