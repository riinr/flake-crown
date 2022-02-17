{
  description = ''Fetch url resources via HTTP and HTTPS.'';
  inputs.src-puppy-1_0_0.flake = false;
  inputs.src-puppy-1_0_0.type = "github";
  inputs.src-puppy-1_0_0.owner = "treeform";
  inputs.src-puppy-1_0_0.repo = "puppy";
  inputs.src-puppy-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."urlly".type = "github";
  inputs."urlly".owner = "riinr";
  inputs."urlly".repo = "flake-nimble";
  inputs."urlly".ref = "flake-pinning";
  inputs."urlly".dir = "nimpkgs/u/urlly";

  
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";

  
  inputs."libcurl".type = "github";
  inputs."libcurl".owner = "riinr";
  inputs."libcurl".repo = "flake-nimble";
  inputs."libcurl".ref = "flake-pinning";
  inputs."libcurl".dir = "nimpkgs/l/libcurl";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  outputs = { self, nixpkgs, src-puppy-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-puppy-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-puppy-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}