{
  description = ''hts (bam/sam) for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hts-v0_3_4.flake = false;
  inputs.src-hts-v0_3_4.ref   = "refs/tags/v0.3.4";
  inputs.src-hts-v0_3_4.owner = "brentp";
  inputs.src-hts-v0_3_4.repo  = "hts-nim";
  inputs.src-hts-v0_3_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hts-v0_3_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hts-v0_3_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}