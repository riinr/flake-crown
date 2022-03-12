{
  description = ''Read and parse Excel files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xlsx-0_4_5.flake = false;
  inputs.src-xlsx-0_4_5.owner = "xflywind";
  inputs.src-xlsx-0_4_5.ref   = "refs/tags/0.4.5";
  inputs.src-xlsx-0_4_5.repo  = "xlsx";
  inputs.src-xlsx-0_4_5.type  = "github";
  
  inputs."zip".dir   = "nimpkgs/z/zip";
  inputs."zip".owner = "riinr";
  inputs."zip".ref   = "flake-pinning";
  inputs."zip".repo  = "flake-nimble";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xlsx-0_4_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xlsx-0_4_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}